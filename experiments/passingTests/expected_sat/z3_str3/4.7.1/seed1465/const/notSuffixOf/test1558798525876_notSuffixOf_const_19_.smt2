(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x249 (str.suffixof "\x07" "0")))
 (= $x249 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
