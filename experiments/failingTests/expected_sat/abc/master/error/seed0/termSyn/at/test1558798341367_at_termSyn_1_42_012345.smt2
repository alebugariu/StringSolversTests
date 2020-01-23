(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.at (int.to.str tmp_int0) (str.to.int tmp_str2)) (str.substr tmp_str2 tmp_int0 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7fb8367c074c Vlab::Solver::StringFormulaGenerator::visitCharAt()
;*** SIGSEGV (@0x0) received by PID 3339 (TID 0x7fb836def740) from PID 0; stack trace: ***
;    @     0x7fb83583f4b0 (unknown)
;    @     0x7fb8367c074c Vlab::Solver::StringFormulaGenerator::visitCharAt()
;    @     0x7fb8367e5ee6 Vlab::SMT::CharAt::accept()
;    @     0x7fb8366e89ad Vlab::SMT::Visitor::visit()
;    @     0x7fb8367e247b Vlab::SMT::Eq::visit_children()
;    @     0x7fb8366e89e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fb8367b79aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7fb8367e2450 Vlab::SMT::Eq::accept()
;    @     0x7fb8366e89ad Vlab::SMT::Visitor::visit()
;    @     0x7fb8367edf79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fb8367e0b87 Vlab::SMT::And::visit_children()
;    @     0x7fb8366e89e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fb8367b69ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7fb8367e0b5c Vlab::SMT::And::accept()
;    @     0x7fb8366e89ad Vlab::SMT::Visitor::visit()
;    @     0x7fb8367deddf Vlab::SMT::Assert::visit_children()
;    @     0x7fb8366e89e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fb8367b6739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7fb8367ded2a Vlab::SMT::Assert::accept()
;    @     0x7fb8366e89ad Vlab::SMT::Visitor::visit()
;    @     0x7fb8367ed699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fb8367de067 Vlab::SMT::Script::visit_children()
;    @     0x7fb8366e89e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fb8367b6703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7fb8367de03c Vlab::SMT::Script::accept()
;    @     0x7fb8366e89ad Vlab::SMT::Visitor::visit()
;    @     0x7fb8367b6669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7fb8367c5ecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7fb8367ca7a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7fb8366ceb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fb83582a830 __libc_start_main
