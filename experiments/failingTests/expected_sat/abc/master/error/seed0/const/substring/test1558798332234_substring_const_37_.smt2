(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "\n" (- 1) 0) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 18446744073709551615) > this->size() (which is 2)
;*** Aborted at 1566142545 (unix time) try "date -d @1566142545" if you are using GNU date ***
;PC: @     0x7fce8d730428 gsignal
;*** SIGABRT (@0x3e800000866) received by PID 2150 (TID 0x7fce8ece0740) from PID 2150; stack trace: ***
;    @     0x7fce8d7304b0 (unknown)
;    @     0x7fce8d730428 gsignal
;    @     0x7fce8d73202a abort
;    @     0x7fce8dd6a84d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7fce8dd686b6 (unknown)
;    @     0x7fce8dd68701 std::terminate()
;    @     0x7fce8dd68919 __cxa_throw
;    @     0x7fce8dd913f7 std::__throw_out_of_range_fmt()
;    @     0x7fce8ddfccf8 std::__cxx11::basic_string<>::substr()
;    @     0x7fce8e614f69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7fce8e6dac34 Vlab::SMT::TermConstant::accept()
;    @     0x7fce8e5d99ad Vlab::SMT::Visitor::visit()
;    @     0x7fce8e6147e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7fce8e6272ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7fce8e6d7310 Vlab::SMT::SubString::accept()
;    @     0x7fce8e5d99ad Vlab::SMT::Visitor::visit()
;    @     0x7fce8e62d32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fce8e61c4ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7fce8e6d3450 Vlab::SMT::Eq::accept()
;    @     0x7fce8e5d99ad Vlab::SMT::Visitor::visit()
;    @     0x7fce8e62d32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fce8e616388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7fce8e6d1b5c Vlab::SMT::And::accept()
;    @     0x7fce8e5d99ad Vlab::SMT::Visitor::visit()
;    @     0x7fce8e62d32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fce8e6160e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7fce8e6cfd2a Vlab::SMT::Assert::accept()
;    @     0x7fce8e5d99ad Vlab::SMT::Visitor::visit()
;    @     0x7fce8e6de699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fce8e6cf067 Vlab::SMT::Script::visit_children()
;    @     0x7fce8e5d99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fce8e6160a9 Vlab::Solver::SyntacticOptimizer::visitScript()
