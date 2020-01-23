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
(declare-fun t2 () String)
(assert (! 
 (let ((?x1026 (str.replace s tmp_str1 tmp_str2)))
 (let (($x1027 (= ?x1026 s_fresh)))
 (and $x1027 (= (str.indexof s tmp_str1 0) (- 1))))) :named a1))
(assert (! 
 (let ((?x560 (str.++ s_fresh t2)))
 (= ?x560 t)) :named a2))
(assert (! 
 (let (($x557 (str.prefixof s t)))
 (let (($x558 (= $x557 true)))
 (not $x558))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;tmp_str1 = NO VALUE
;tmp_str2 = NO VALUE
;s_fresh = NO VALUE
;t2 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
