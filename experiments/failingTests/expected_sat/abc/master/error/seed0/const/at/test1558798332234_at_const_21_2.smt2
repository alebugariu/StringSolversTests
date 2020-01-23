(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.at "2" (- 1)) tmp_str2))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142577 (unix time) try "date -d @1566142577" if you are using GNU date ***
;PC: @     0x7fad3f4ff428 gsignal
;*** SIGABRT (@0x3e800000a61) received by PID 2657 (TID 0x7fad40aaf740) from PID 2657; stack trace: ***
;    @     0x7fad3f4ff4b0 (unknown)
;    @     0x7fad3f4ff428 gsignal
;    @     0x7fad3f50102a abort
;    @     0x7fad3fb3984d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7fad3fb376b6 (unknown)
;    @     0x7fad3fb37701 std::terminate()
;    @     0x7fad3fb37919 __cxa_throw
;    @     0x7fad3fb602cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7fad40493c40 Vlab::Solver::ConstraintSolver::visitTermConstant()
;    @     0x7fad404a9c34 Vlab::SMT::TermConstant::accept()
;    @     0x7fad403a89ad Vlab::SMT::Visitor::visit()
;    @     0x7fad404a5f28 Vlab::SMT::CharAt::visit_children()
;    @     0x7fad403a89e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fad404946a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7fad40491a2b Vlab::Solver::ConstraintSolver::visitCharAt()
;    @     0x7fad404a5ee6 Vlab::SMT::CharAt::accept()
;    @     0x7fad403a89ad Vlab::SMT::Visitor::visit()
;    @     0x7fad404a247b Vlab::SMT::Eq::visit_children()
;    @     0x7fad403a89e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fad404946a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7fad4048d77b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7fad404a2450 Vlab::SMT::Eq::accept()
;    @     0x7fad403a89ad Vlab::SMT::Visitor::visit()
;    @     0x7fad40494a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fad4048b8c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fad404a0b5c Vlab::SMT::And::accept()
;    @     0x7fad403a89ad Vlab::SMT::Visitor::visit()
;    @     0x7fad40494a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fad4048ad2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fad4049ed2a Vlab::SMT::Assert::accept()
