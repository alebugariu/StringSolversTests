(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "-1" (- 1) 0) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 18446744073709551615) > this->size() (which is 2)
;*** Aborted at 1566142543 (unix time) try "date -d @1566142543" if you are using GNU date ***
;PC: @     0x7f224fdda428 gsignal
;*** SIGABRT (@0x3e800000851) received by PID 2129 (TID 0x7f225138a740) from PID 2129; stack trace: ***
;    @     0x7f224fdda4b0 (unknown)
;    @     0x7f224fdda428 gsignal
;    @     0x7f224fddc02a abort
;    @     0x7f225041484d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f22504126b6 (unknown)
;    @     0x7f2250412701 std::terminate()
;    @     0x7f2250412919 __cxa_throw
;    @     0x7f225043b3f7 std::__throw_out_of_range_fmt()
;    @     0x7f22504a6cf8 std::__cxx11::basic_string<>::substr()
;    @     0x7f2250cbef69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7f2250d84c34 Vlab::SMT::TermConstant::accept()
;    @     0x7f2250c839ad Vlab::SMT::Visitor::visit()
;    @     0x7f2250cbe7e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7f2250cd12ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7f2250d81310 Vlab::SMT::SubString::accept()
;    @     0x7f2250c839ad Vlab::SMT::Visitor::visit()
;    @     0x7f2250cd732e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f2250cc64ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7f2250d7d450 Vlab::SMT::Eq::accept()
;    @     0x7f2250c839ad Vlab::SMT::Visitor::visit()
;    @     0x7f2250cd732e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f2250cc0388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7f2250d7bb5c Vlab::SMT::And::accept()
;    @     0x7f2250c839ad Vlab::SMT::Visitor::visit()
;    @     0x7f2250cd732e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f2250cc00e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7f2250d79d2a Vlab::SMT::Assert::accept()
;    @     0x7f2250c839ad Vlab::SMT::Visitor::visit()
;    @     0x7f2250d88699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f2250d79067 Vlab::SMT::Script::visit_children()
;    @     0x7f2250c839e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f2250cc00a9 Vlab::Solver::SyntacticOptimizer::visitScript()
