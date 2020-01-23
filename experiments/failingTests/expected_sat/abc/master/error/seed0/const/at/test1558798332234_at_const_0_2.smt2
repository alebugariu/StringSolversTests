(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.at "" (- 1)) tmp_str2))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: not_implemented
;  what():  stoi
;*** Aborted at 1566142578 (unix time) try "date -d @1566142578" if you are using GNU date ***
;PC: @     0x7fe463f4a428 gsignal
;*** SIGABRT (@0x3e800000a78) received by PID 2680 (TID 0x7fe4654fa740) from PID 2680; stack trace: ***
;    @     0x7fe463f4a4b0 (unknown)
;    @     0x7fe463f4a428 gsignal
;    @     0x7fe463f4c02a abort
;    @     0x7fe46458484d __gnu_cxx::__verbose_terminate_handler()
;    @     0x7fe4645826b6 (unknown)
;    @     0x7fe464582701 std::terminate()
;    @     0x7fe464582919 __cxa_throw
;    @     0x7fe4645ab2cf std::__throw_out_of_range()
;    @           0x41244f __gnu_cxx::__stoa<>()
;    @           0x411bc6 std::__cxx11::stoi()
;    @     0x7fe464edec40 Vlab::Solver::ConstraintSolver::visitTermConstant()
;    @     0x7fe464ef4c34 Vlab::SMT::TermConstant::accept()
;    @     0x7fe464df39ad Vlab::SMT::Visitor::visit()
;    @     0x7fe464ef0f28 Vlab::SMT::CharAt::visit_children()
;    @     0x7fe464df39e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fe464edf6a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7fe464edca2b Vlab::Solver::ConstraintSolver::visitCharAt()
;    @     0x7fe464ef0ee6 Vlab::SMT::CharAt::accept()
;    @     0x7fe464df39ad Vlab::SMT::Visitor::visit()
;    @     0x7fe464eed47b Vlab::SMT::Eq::visit_children()
;    @     0x7fe464df39e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fe464edf6a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7fe464ed877b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7fe464eed450 Vlab::SMT::Eq::accept()
;    @     0x7fe464df39ad Vlab::SMT::Visitor::visit()
;    @     0x7fe464edfa82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fe464ed68c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fe464eebb5c Vlab::SMT::And::accept()
;    @     0x7fe464df39ad Vlab::SMT::Visitor::visit()
;    @     0x7fe464edfa82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fe464ed5d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fe464ee9d2a Vlab::SMT::Assert::accept()
