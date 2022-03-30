select xzqh_id, FWYT,XKLX, sj, sum(YSJZMJ), sum(YSTNMJ), COUNT(JGPTID) from 
(
select c.xzqh_id, c.FWYT,a.XKLX, DATE(a.XSXKKSRQ) sj, a.YSJZMJ, a.YSTNMJ, c.JGPTID
from fdcscjg_htxx_xsxk a
join fdcscjg_htxx_xkfwgl b on a.JGPTID = b.XSX_JGPTID
join fdcscjg_lpb_fwxx c on c.JGPTID = b.FWX_JGPTID
) aa
group by xzqh_id, FWYT, XKLX, sj

select distinct a.JGPTID from fdcscjg_htxx_xsxk a
join fdcscjg_htxx_xkfwgl b on a.JGPTID = b.XSX_JGPTID
join fdcscjg_lpb_fwxx c on c.JGPTID = b.FWX_JGPTID