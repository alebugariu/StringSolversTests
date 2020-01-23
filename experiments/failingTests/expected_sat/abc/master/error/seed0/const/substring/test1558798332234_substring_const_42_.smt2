(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "\n" 2 (- 1)) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142547 (unix time) try "date -d @1566142547" if you are using GNU date ***
;PC: @     0x7f00de18e428 gsignal
;*** SIGABRT (@0x3e800000879) received by PID 2169 (TID 0x7f00df73e740) from PID 2169; stack trace: ***
;    @     0x7f00de18e4b0 (unknown)
;    @     0x7f00de18e428 gsignal
;    @     0x7f00de19002a abort
;    @     0x7f00de7c884d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f00de7c66b6 (unknown)
;    @     0x7f00de7c6701 std::terminate()
;    @     0x7f00de7c6919 __cxa_throw
;    @     0x7f00de7ef2cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7f00df0857f5 Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7f00df135310 Vlab::SMT::SubString::accept()
;    @     0x7f00df0379ad Vlab::SMT::Visitor::visit()
;    @     0x7f00df08b32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f00df07a4ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7f00df131450 Vlab::SMT::Eq::accept()
;    @     0x7f00df0379ad Vlab::SMT::Visitor::visit()
;    @     0x7f00df08b32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f00df074388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7f00df12fb5c Vlab::SMT::And::accept()
;    @     0x7f00df0379ad Vlab::SMT::Visitor::visit()
;    @     0x7f00df08b32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f00df0740e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7f00df12dd2a Vlab::SMT::Assert::accept()
;    @     0x7f00df0379ad Vlab::SMT::Visitor::visit()
;    @     0x7f00df13c699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f00df12d067 Vlab::SMT::Script::visit_children()
;    @     0x7f00df0379e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f00df0740a9 Vlab::Solver::SyntacticOptimizer::visitScript()
;    @     0x7f00df12d03c Vlab::SMT::Script::accept()
;    @     0x7f00df0379ad Vlab::SMT::Visitor::visit()
;    @     0x7f00df073ed5 Vlab::Solver::SyntacticOptimizer::start()
