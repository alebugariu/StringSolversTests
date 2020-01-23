(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str1 () String)
(declare-fun t () String)
(declare-fun t_fresh () String)
(declare-fun tmp_str2 () String)
(declare-fun s () String)
(declare-fun t1 () String)
(assert (! 
 (let ((?x1083 (str.indexof t tmp_str1 0)))
 (let (($x615 (= ?x1083 (- 1))))
 (let ((?x115 (str.replace t tmp_str1 tmp_str2)))
 (let (($x1046 (= ?x115 t_fresh)))
 (and $x1046 $x615))))) :named a1))
(assert (! 
 (let ((?x365 (str.++ t1 s)))
 (= ?x365 t_fresh)) :named a2))
(assert (! 
 (let (($x1144 (str.suffixof s t)))
 (let (($x2431 (= $x1144 true)))
 (not $x2431))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;tmp_str1 = NO VALUE
;tmp_str2 = NO VALUE
;t1 = NO VALUE
;t_fresh = NO VALUE

;unsat core: a0 a1 a2 

