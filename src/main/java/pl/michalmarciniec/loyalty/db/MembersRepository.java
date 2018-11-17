package pl.michalmarciniec.loyalty.db;

import pl.michalmarciniec.loyalty.domain.dto.RankingItemDto;
import pl.michalmarciniec.loyalty.domain.entity.Member;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

public interface MembersRepository extends JpaRepositoryWrapper<Member> {

    Optional<Member> findOneByEmail(String email);

    @Query(value = "SELECT new pl.michalmarciniec.loyalty.domain.dto.RankingItemDto(p, SUM(a.points))" +
            " FROM Member p LEFT JOIN Bonus a ON p.id = a.receiverId " +
            " AND a.createdAt BETWEEN :startDate AND :endDate" +
            " GROUP BY p.id ORDER BY SUM(a.points) DESC")
    List<RankingItemDto> getRankings(@Param("startDate") LocalDateTime startDate,
                                     @Param("endDate") LocalDateTime endDate);

    @Query(value = "SELECT new pl.michalmarciniec.loyalty.domain.dto.RankingItemDto(p, SUM(a.points))" +
            " FROM Member p LEFT JOIN Bonus a ON p.id = a.receiverId " +
            " WHERE p.id = :memberId AND a.createdAt BETWEEN :startDate AND :endDate" +
            " GROUP BY p.id")
    RankingItemDto getMemberRanking(@Param("memberId") Long memberId,
                                    @Param("startDate") LocalDateTime startDate,
                                    @Param("endDate") LocalDateTime endDate);

}
