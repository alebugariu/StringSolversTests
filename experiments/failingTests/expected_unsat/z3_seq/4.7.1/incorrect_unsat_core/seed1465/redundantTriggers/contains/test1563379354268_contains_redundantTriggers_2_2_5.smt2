(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s3_fresh () String)
(declare-fun t () String)
(declare-fun s1 () String)
(declare-fun tmp_str2 () String)
(declare-fun s3 () String)
(declare-fun tmp_str3 () String)
(assert (! 
 (let ((?x329 (str.++ s1 t)))
 (let ((?x2493 (str.++ ?x329 s3_fresh)))
 (= ?x2493 s))) :named a1))
(assert (! 
 (let ((?x1344 (str.replace s3 tmp_str2 tmp_str3)))
 (let (($x1345 (= ?x1344 s3_fresh)))
 (and $x1345 (= (str.indexof s3 tmp_str2 0) (- 1))))) :named a2))
(assert (! 
 (let (($x326 (str.contains s t)))
 (let (($x327 (= $x326 true)))
 (not $x327))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1 = NO VALUE
;s3_fresh = NO VALUE
;s3 = NO VALUE
;tmp_str2 = NO VALUE
;tmp_str3 = NO VALUE

;unsat core: a0 a1 

;actual status: incorrect_unsat_core
;(a1 a2 a0)
