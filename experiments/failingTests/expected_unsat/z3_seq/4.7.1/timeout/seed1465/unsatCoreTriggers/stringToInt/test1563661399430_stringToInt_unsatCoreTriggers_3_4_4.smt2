(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_int19 () Int)
(declare-fun tmp_str17 () String)
(declare-fun tmp_int18 () Int)
(declare-fun empty_fresh () String)
(declare-fun result () Int)
(declare-fun s () String)
(assert (! 
 (let ((?x1828 (str.len tmp_str17)))
 (let (($x1839 (>= tmp_int18 ?x1828)))
 (let (($x1838 (< tmp_int18 0)))
 (let (($x1840 (or $x1838 $x1839)))
 (and (= (str.substr tmp_str17 tmp_int18 tmp_int19) empty_fresh) (or $x1840 (<= tmp_int19 0))))))) :named a1))
(assert (! 
 (let (($x207 (= result (- 1))))
 (let (($x208 (= $x207 true)))
 (let ((?x288 (int.to.str result)))
 (let (($x289 (= ?x288 s)))
 (let (($x286 (forall ((j Int) )(! (let (($x258 (or (= (= (str.at s j) "8") true) (= (= (str.at s j) "9") true))))
 (let (($x264 (or (= (= (str.at s j) "6") true) (or (= (= (str.at s j) "7") true) $x258))))
 (let (($x270 (or (= (= (str.at s j) "4") true) (or (= (= (str.at s j) "5") true) $x264))))
 (let (($x276 (or (= (= (str.at s j) "2") true) (or (= (= (str.at s j) "3") true) $x270))))
 (let (($x282 (or (= (= (str.at s j) "0") true) (or (= (= (str.at s j) "1") true) $x276))))
 (=> (and (>= j 0) (< j (str.len s))) $x282)))))) :pattern ( (str.at s j) )))
 ))
 (let (($x1842 (= s empty_fresh)))
 (let (($x1843 (= $x1842 false)))
 (let (($x1844 (and $x1843 $x286)))
 (ite $x1844 $x289 $x208))))))))) :named a2))
(assert (! 
 (let ((?x211 (str.to.int s)))
 (let (($x212 (= ?x211 result)))
 (not $x212))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;result = NO VALUE
;tmp_str17 = NO VALUE
;tmp_int18 = NO VALUE
;tmp_int19 = NO VALUE
;empty_fresh = 

;unsat core: a0 a1 a2 

;actual status: timeout
