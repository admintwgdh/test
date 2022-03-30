SELECT fwyt,xzqh_id, sj,sum(HTJE),sum(jzmj),sum(tlmj), count(JGPTID) FROM (			-- 存量房测试
select distinct c.fwyt, a.htje, c.JGPTID, a.xzqh_id, DATE(a.QYSJ) sj, a.JZMJ, a.TLMJ from `fdcscjg_htxx_xjspfht` a
	join fdcscjg_lpb_fwxx c on a.FWX_JGPTID = c.JGPTID
	where a.HTZT = '1'
) a
group by fwyt, xzqh_id, sj

select distinct * from `fdcscjg_htxx_xjspfht` a
	join fdcscjg_lpb_fwxx c on a.FWX_JGPTID = c.JGPTID
	where a.HTZT = '1'