SELECT fwyt,xzqh_id, sj,sum(HTJE),sum(jzmj),sum(tlmj), count(JGPTID) FROM (			-- 存量房测试
select distinct c.fwyt, a.htje, c.JGPTID, a.xzqh_id, DATE(a.JYSJ) sj, a.JZMJ, a.TLMJ from `fdcscjg_htxx_clfht` a
	join fdcscjg_htxx_clfhtglfw b on a.JGPTID = b.HT_JGPTID
	join fdcscjg_lpb_fwxx c on b.FWX_JGPTID = c.JGPTID
	where a.JGPTID in ('410800-4108000000011261','410800-4108000000011264','410800-4108000000011266') and a.HTZT = '1'
) a
group by fwyt, xzqh_id, sj

select distinct * from `fdcscjg_htxx_clfht` a
	join fdcscjg_htxx_clfhtglfw b on a.JGPTID = b.HT_JGPTID
	join fdcscjg_lpb_fwxx c on b.FWX_JGPTID = c.JGPTID
	
select distinct c.fwyt, a.htje, c.JGPTID, a.xzqh_id, DATE(a.JYSJ) sj, a.JZMJ, a.TLMJ from `fdcscjg_htxx_clfht` a
	join fdcscjg_htxx_clfhtglfw b on a.JGPTID = b.HT_JGPTID
	join fdcscjg_lpb_fwxx c on b.FWX_JGPTID = c.JGPTID
	where a.JGPTID in ('410800-4108000000011261','410800-4108000000011264','410800-4108000000011266') and a.HTZT = '1'
	