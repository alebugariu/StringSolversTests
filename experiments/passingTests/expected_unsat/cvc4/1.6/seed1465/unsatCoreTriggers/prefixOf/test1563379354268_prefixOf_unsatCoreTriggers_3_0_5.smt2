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
 (let ((?x516 (str.replace s tmp_str1 tmp_str2)))
 (let (($x517 (= ?x516 s_fresh)))
 (and $x517 (= (str.indexof s tmp_str1 0) (- 1))))) :named a1))
(assert (! 
 (let ((?x1306 (str.++ s_fresh t2)))
 (= ?x1306 t)) :named a2))
(assert (! 
 (let (($x1301 (str.prefixof s t)))
 (let (($x1302 (= $x1301 true)))
 (not $x1302))) :named a0))
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
