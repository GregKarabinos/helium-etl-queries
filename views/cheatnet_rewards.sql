 SELECT rewards.account,
    rewards.gateway,
    rewards.amount,
    to_timestamp(rewards."time"::double precision)::timestamp without time zone AS "timestamp"
   FROM cheatnets
     LEFT JOIN rewards ON rewards.account = cheatnets.address::text;
