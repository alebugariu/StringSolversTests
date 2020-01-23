(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str1 () String)
(declare-fun s () String)
(declare-fun s_fresh () String)
(declare-fun tmp_str2 () String)
(declare-fun t () String)
(declare-fun t1 () String)
(assert (! 
 (let (($x1029 (str.contains s tmp_str1)))
 (let (($x1030 (= $x1029 false)))
 (let ((?x1026 (str.replace s tmp_str1 tmp_str2)))
 (let (($x1027 (= ?x1026 s_fresh)))
 (and $x1027 $x1030))))) :named a1))
(assert (! 
 (let ((?x1665 (str.++ t1 s_fresh)))
 (= ?x1665 t)) :named a2))
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
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
