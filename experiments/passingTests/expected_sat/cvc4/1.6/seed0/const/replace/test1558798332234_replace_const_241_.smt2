(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2326 (str.replace "\x07" "0" """a""")))
 (= ?x2326 "\x07")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
