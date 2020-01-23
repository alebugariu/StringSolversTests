(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.substr "\n" (- 1) 0) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str3 = 
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 18446744073709551615) > this->size() (which is 2)
;*** Aborted at 1566142544 (unix time) try "date -d @1566142544" if you are using GNU date ***
;PC: @     0x7fa6c787a428 gsignal
;*** SIGABRT (@0x3e80000085f) received by PID 2143 (TID 0x7fa6c8e2a740) from PID 2143; stack trace: ***
;    @     0x7fa6c787a4b0 (unknown)
;    @     0x7fa6c787a428 gsignal
;    @     0x7fa6c787c02a abort
;    @     0x7fa6c7eb484d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7fa6c7eb26b6 (unknown)
;    @     0x7fa6c7eb2701 std::terminate()
;    @     0x7fa6c7eb2919 __cxa_throw
;    @     0x7fa6c7edb3f7 std::__throw_out_of_range_fmt()
;    @     0x7fa6c7f46cf8 std::__cxx11::basic_string<>::substr()
;    @     0x7fa6c875ef69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7fa6c8824c34 Vlab::SMT::TermConstant::accept()
;    @     0x7fa6c87239ad Vlab::SMT::Visitor::visit()
;    @     0x7fa6c875e7e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7fa6c87712ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7fa6c8821310 Vlab::SMT::SubString::accept()
;    @     0x7fa6c87239ad Vlab::SMT::Visitor::visit()
;    @     0x7fa6c877732e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fa6c87664ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7fa6c881d450 Vlab::SMT::Eq::accept()
;    @     0x7fa6c87239ad Vlab::SMT::Visitor::visit()
;    @     0x7fa6c877732e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fa6c8760388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7fa6c881bb5c Vlab::SMT::And::accept()
;    @     0x7fa6c87239ad Vlab::SMT::Visitor::visit()
;    @     0x7fa6c877732e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fa6c87600e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7fa6c8819d2a Vlab::SMT::Assert::accept()
;    @     0x7fa6c87239ad Vlab::SMT::Visitor::visit()
;    @     0x7fa6c8828699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fa6c8819067 Vlab::SMT::Script::visit_children()
;    @     0x7fa6c87239e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fa6c87600a9 Vlab::Solver::SyntacticOptimizer::visitScript()
