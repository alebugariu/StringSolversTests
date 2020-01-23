(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.to.int "\"a\"") tmp_int1))
(check-sat)

(get-info :reason-unknown)

;tmp_int1 = -1
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142553 (unix time) try "date -d @1566142553" if you are using GNU date ***
;PC: @     0x7f553192f428 gsignal
;*** SIGABRT (@0x3e8000008bd) received by PID 2237 (TID 0x7f5532edf740) from PID 2237; stack trace: ***
;    @     0x7f553192f4b0 (unknown)
;    @     0x7f553192f428 gsignal
;    @     0x7f553193102a abort
;    @     0x7f5531f6984d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f5531f676b6 (unknown)
;    @     0x7f5531f67701 std::terminate()
;    @     0x7f5531f67919 __cxa_throw
;    @     0x7f5531f9020f std::__throw_invalid_argument()
;    @           0x412423 __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7f553282d13b Vlab::Solver::SyntacticOptimizer::check_and_process_for_contains_transformation()
;    @     0x7f553281c007 Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7f55328d2450 Vlab::SMT::Eq::accept()
;    @     0x7f55327d89ad Vlab::SMT::Visitor::visit()
;    @     0x7f553282c32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f5532815388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7f55328d0b5c Vlab::SMT::And::accept()
;    @     0x7f55327d89ad Vlab::SMT::Visitor::visit()
;    @     0x7f553282c32e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7f55328150e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7f55328ced2a Vlab::SMT::Assert::accept()
;    @     0x7f55327d89ad Vlab::SMT::Visitor::visit()
;    @     0x7f55328dd699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f55328ce067 Vlab::SMT::Script::visit_children()
;    @     0x7f55327d89e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f55328150a9 Vlab::Solver::SyntacticOptimizer::visitScript()
;    @     0x7f55328ce03c Vlab::SMT::Script::accept()
;    @     0x7f55327d89ad Vlab::SMT::Visitor::visit()
;    @     0x7f5532814ed5 Vlab::Solver::SyntacticOptimizer::start()
;    @     0x7f55327be80c Vlab::Driver::InitializeSolver()
;    @           0x40ffb9 main
;    @     0x7f553191a830 __libc_start_main
