(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str2 () String)
(declare-fun s1 () String)
(declare-fun s1_fresh () String)
(declare-fun tmp_str3 () String)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun t () String)
(assert (! 
 (let ((?x2474 (str.replace s1 tmp_str2 tmp_str3)))
 (let (($x2475 (= ?x2474 s1_fresh)))
 (and $x2475 (= (str.indexof s1 tmp_str2 0) (- 1))))) :named a1))
(assert (! 
 (let ((?x2471 (str.++ s1_fresh t)))
 (let ((?x2472 (str.++ ?x2471 s3)))
 (= ?x2472 s))) :named a2))
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
;tmp_str2 = NO VALUE
;tmp_str3 = NO VALUE
;s1_fresh = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a2 

;actual status: unsat
