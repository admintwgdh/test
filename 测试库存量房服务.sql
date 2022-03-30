SELECT fwyt, sum(HTJE), count(JGPTID) FROM (
select distinct c.fwyt, a.htje, a.JGPTID from `fdcscjg_htxx_clfht` a
	join fdcscjg_htxx_clfhtglfw b on a.JGPTID = b.HT_JGPTID
	join fdcscjg_lpb_fwxx c on b.FWX_JGPTID = c.JGPTID
	where DATE(a.JYSJ) = '2022-03-29' and a.xzqh_id = '410800'
) a
group by fwyt 
having fwyt = "11" 

select distinct * from `fdcscjg_htxx_clfht` a
	join fdcscjg_htxx_clfhtglfw b on a.JGPTID = b.HT_JGPTID
	join fdcscjg_lpb_fwxx c on b.FWX_JGPTID = c.JGPTID
	where DATE(a.JYSJ) = '2022-03-29' and a.xzqh_id = '410800'