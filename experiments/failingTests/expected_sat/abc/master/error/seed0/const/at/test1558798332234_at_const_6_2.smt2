(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.at "a" (- 1)) tmp_str2))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142578 (unix time) try "date -d @1566142578" if you are using GNU date ***
;PC: @     0x7f4929bba428 gsignal
;*** SIGABRT (@0x3e800000a6e) received by PID 2670 (TID 0x7f492b16a740) from PID 2670; stack trace: ***
;    @     0x7f4929bba4b0 (unknown)
;    @     0x7f4929bba428 gsignal
;    @     0x7f4929bbc02a abort
;    @     0x7f492a1f484d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7f492a1f26b6 (unknown)
;    @     0x7f492a1f2701 std::terminate()
;    @     0x7f492a1f2919 __cxa_throw
;    @     0x7f492a21b2cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7f492ab4ec40 Vlab::Solver::ConstraintSolver::visitTermConstant()
;    @     0x7f492ab64c34 Vlab::SMT::TermConstant::accept()
;    @     0x7f492aa639ad Vlab::SMT::Visitor::visit()
;    @     0x7f492ab60f28 Vlab::SMT::CharAt::visit_children()
;    @     0x7f492aa639e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f492ab4f6a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f492ab4ca2b Vlab::Solver::ConstraintSolver::visitCharAt()
;    @     0x7f492ab60ee6 Vlab::SMT::CharAt::accept()
;    @     0x7f492aa639ad Vlab::SMT::Visitor::visit()
;    @     0x7f492ab5d47b Vlab::SMT::Eq::visit_children()
;    @     0x7f492aa639e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f492ab4f6a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7f492ab4877b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7f492ab5d450 Vlab::SMT::Eq::accept()
;    @     0x7f492aa639ad Vlab::SMT::Visitor::visit()
;    @     0x7f492ab4fa82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f492ab468c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f492ab5bb5c Vlab::SMT::And::accept()
;    @     0x7f492aa639ad Vlab::SMT::Visitor::visit()
;    @     0x7f492ab4fa82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f492ab45d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f492ab59d2a Vlab::SMT::Assert::accept()
