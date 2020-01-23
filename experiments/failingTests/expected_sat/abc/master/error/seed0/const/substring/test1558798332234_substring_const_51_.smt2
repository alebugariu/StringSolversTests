(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "-1" 2 (- 1)) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142542 (unix time) try "date -d @1566142542" if you are using GNU date ***
;PC: @     0x7fe2b2a69428 gsignal
;*** SIGABRT (@0x3e80000084a) received by PID 2122 (TID 0x7fe2b4019740) from PID 2122; stack trace: ***
;    @     0x7fe2b2a694b0 (unknown)
;    @     0x7fe2b2a69428 gsignal
;    @     0x7fe2b2a6b02a abort
;    @     0x7fe2b30a384d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7fe2b30a16b6 (unknown)
;    @     0x7fe2b30a1701 std::terminate()
;    @     0x7fe2b30a1919 __cxa_throw
;    @     0x7fe2b30ca2cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7fe2b39607f5 Vlab::Solver::SyntacticOptimizer::visitSubString()
;    @     0x7fe2b3a10310 Vlab::SMT::SubString::accept()
;    @     0x7fe2b39129ad Vlab::SMT::Visitor::visit()
;    @     0x7fe2b396632e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fe2b39554ee Vlab::Solver::SyntacticOptimizer::visitEq()
;    @     0x7fe2b3a0c450 Vlab::SMT::Eq::accept()
;    @     0x7fe2b39129ad Vlab::SMT::Visitor::visit()
;    @     0x7fe2b396632e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fe2b394f388 Vlab::Solver::SyntacticOptimizer::visitAnd()
;    @     0x7fe2b3a0ab5c Vlab::SMT::And::accept()
;    @     0x7fe2b39129ad Vlab::SMT::Visitor::visit()
;    @     0x7fe2b396632e Vlab::Solver::SyntacticOptimizer::visit_and_callback()
;    @     0x7fe2b394f0e3 Vlab::Solver::SyntacticOptimizer::visitAssert()
;    @     0x7fe2b3a08d2a Vlab::SMT::Assert::accept()
;    @     0x7fe2b39129ad Vlab::SMT::Visitor::visit()
;    @     0x7fe2b3a17699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fe2b3a08067 Vlab::SMT::Script::visit_children()
;    @     0x7fe2b39129e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fe2b394f0a9 Vlab::Solver::SyntacticOptimizer::visitScript()
;    @     0x7fe2b3a0803c Vlab::SMT::Script::accept()
;    @     0x7fe2b39129ad Vlab::SMT::Visitor::visit()
;    @     0x7fe2b394eed5 Vlab::Solver::SyntacticOptimizer::start()
