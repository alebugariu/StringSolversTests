(set-option :random-seed 0)
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
 (= (str.++ (str.++ s1 t) s3_fresh) s) :named a1))
(assert (! 
 (let (($x2491 (= (str.replace s3 tmp_str2 tmp_str3) s3_fresh)))
 (and $x2491 (= (str.indexof s3 tmp_str2 0) (- 1)))) :named a2))
(assert (! 
 (not (= (str.contains s t) true)) :named a0))
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

;actual status: unsat
