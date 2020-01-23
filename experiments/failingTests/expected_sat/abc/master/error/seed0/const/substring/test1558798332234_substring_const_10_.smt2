(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "\"a\"" (- 1) 0) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  basic_string::substr: __pos (which is 18446744073709551615) > this->size() (which is 3)
;*** Aborted at 1566142543 (unix time) try "date -d @1566142543" if you are using GNU date ***
;PC: @     0x7f2fb9248428 gsignal
;*** SIGABRT (@0x3e80000084f) received by PID 2127 (TID 0x7f2fba7f8740) from PID 2127; stack trace: ***
;    @     0x7f2fb92484b0 (unknown)
;    @     0x7f2fb9248428 gsignal
;    @     0x7f2fb924a02a abort
;    @     0x7f2fb988284d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f2fb98806b6 (unknown)
;    @     0x7f2fb9880701 std::terminate()
;    @     0x7f2fb9880919 __cxa_throw
;    @     0x7f2fb98a93f7 std::__throw_out_of_range_fmt()
;    @     0x7f2fb9914cf8 std::__cxx11::basic_string<>::substr()
;    @     0x7f2fba12cf69 Vlab::Solver::Optimization::SubstringOptimization::visitTermConstant()
;    @     0x7f2fba1f2c34 Vlab::SMT::TermConstant::accept()
;    @     0x7f2fba0f19ad Vlab::SMT::Visitor::visit()
;    @     0x7f2fba12c7e3 Vlab::Solver::Optimization::SubstringOptimization::start()
;    @     0x7f2fba13f2ee Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7f2fba1ef310 Vlab::SMT::SubString::accept()
;    @     0x7f2fba0f19ad Vlab::SMT::Visitor::visit()
;    @     0x7f2fba14532e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f2fba1344ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7f2fba1eb450 Vlab::SMT::Eq::accept()
;    @     0x7f2fba0f19ad Vlab::SMT::Visitor::visit()
;    @     0x7f2fba14532e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f2fba12e388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7f2fba1e9b5c Vlab::SMT::And::accept()
;    @     0x7f2fba0f19ad Vlab::SMT::Visitor::visit()
;    @     0x7f2fba14532e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f2fba12e0e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7f2fba1e7d2a Vlab::SMT::Assert::accept()
;    @     0x7f2fba0f19ad Vlab::SMT::Visitor::visit()
;    @     0x7f2fba1f6699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f2fba1e7067 Vlab::SMT::Script::visit_children()
;    @     0x7f2fba0f19e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f2fba12e0a9 Vlab::Solver::SyntacticOptimizer::visitScript()
