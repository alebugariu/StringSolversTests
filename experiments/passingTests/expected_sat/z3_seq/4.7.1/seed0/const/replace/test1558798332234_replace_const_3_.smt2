(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x723 (str.replace "" "" "\x07")))
 (= ?x723 "\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
