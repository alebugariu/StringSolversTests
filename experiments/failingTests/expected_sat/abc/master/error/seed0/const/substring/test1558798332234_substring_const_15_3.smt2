(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.substr "\"a\"" 2 (- 1)) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str3 = 
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142545 (unix time) try "date -d @1566142545" if you are using GNU date ***
;PC: @     0x7f02a47a1428 gsignal
;*** SIGABRT (@0x3e800000863) received by PID 2147 (TID 0x7f02a5d51740) from PID 2147; stack trace: ***
;    @     0x7f02a47a14b0 (unknown)
;    @     0x7f02a47a1428 gsignal
;    @     0x7f02a47a302a abort
;    @     0x7f02a4ddb84d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f02a4dd96b6 (unknown)
;    @     0x7f02a4dd9701 std::terminate()
;    @     0x7f02a4dd9919 __cxa_throw
;    @     0x7f02a4e022cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7f02a56987f5 Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7f02a5748310 Vlab::SMT::SubString::accept()
;    @     0x7f02a564a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f02a569e32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f02a568d4ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7f02a5744450 Vlab::SMT::Eq::accept()
;    @     0x7f02a564a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f02a569e32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f02a5687388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7f02a5742b5c Vlab::SMT::And::accept()
;    @     0x7f02a564a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f02a569e32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f02a56870e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7f02a5740d2a Vlab::SMT::Assert::accept()
;    @     0x7f02a564a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f02a574f699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f02a5740067 Vlab::SMT::Script::visit_children()
;    @     0x7f02a564a9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f02a56870a9 Vlab::Solver::SyntacticOptimizer::visitScript()
;    @     0x7f02a574003c Vlab::SMT::Script::accept()
;    @     0x7f02a564a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f02a5686ed5 Vlab::Solver::SyntacticOptimizer::start()
