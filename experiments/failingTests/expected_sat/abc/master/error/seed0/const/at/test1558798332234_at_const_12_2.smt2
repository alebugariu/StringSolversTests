(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.at "\n" (- 1)) tmp_str2))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142578 (unix time) try "date -d @1566142578" if you are using GNU date ***
;PC: @     0x7fb4a6e77428 gsignal
;*** SIGABRT (@0x3e800000a6c) received by PID 2668 (TID 0x7fb4a8427740) from PID 2668; stack trace: ***
;    @     0x7fb4a6e774b0 (unknown)
;    @     0x7fb4a6e77428 gsignal
;    @     0x7fb4a6e7902a abort
;    @     0x7fb4a74b184d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7fb4a74af6b6 (unknown)
;    @     0x7fb4a74af701 std::terminate()
;    @     0x7fb4a74af919 __cxa_throw
;    @     0x7fb4a74d82cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7fb4a7e0bc40 Vlab::Solver::ConstraintSolver::visitTermConstant()
;    @     0x7fb4a7e21c34 Vlab::SMT::TermConstant::accept()
;    @     0x7fb4a7d209ad Vlab::SMT::Visitor::visit()
;    @     0x7fb4a7e1df28 Vlab::SMT::CharAt::visit_children()
;    @     0x7fb4a7d209e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fb4a7e0c6a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7fb4a7e09a2b Vlab::Solver::ConstraintSolver::visitCharAt()
;    @     0x7fb4a7e1dee6 Vlab::SMT::CharAt::accept()
;    @     0x7fb4a7d209ad Vlab::SMT::Visitor::visit()
;    @     0x7fb4a7e1a47b Vlab::SMT::Eq::visit_children()
;    @     0x7fb4a7d209e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fb4a7e0c6a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7fb4a7e0577b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7fb4a7e1a450 Vlab::SMT::Eq::accept()
;    @     0x7fb4a7d209ad Vlab::SMT::Visitor::visit()
;    @     0x7fb4a7e0ca82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fb4a7e038c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fb4a7e18b5c Vlab::SMT::And::accept()
;    @     0x7fb4a7d209ad Vlab::SMT::Visitor::visit()
;    @     0x7fb4a7e0ca82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fb4a7e02d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fb4a7e16d2a Vlab::SMT::Assert::accept()
