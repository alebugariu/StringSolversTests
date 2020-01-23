(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.at (int.to.str tmp_int0) (str.to.int tmp_str2)) (str.at tmp_str2 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7f1a5ab3474c Vlab::Solver::StringFormulaGenerator::visitCharAt()
;*** SIGSEGV (@0x0) received by PID 3283 (TID 0x7f1a5b163740) from PID 0; stack trace: ***
;    @     0x7f1a59bb34b0 (unknown)
;    @     0x7f1a5ab3474c Vlab::Solver::StringFormulaGenerator::visitCharAt()
;    @     0x7f1a5ab59ee6 Vlab::SMT::CharAt::accept()
;    @     0x7f1a5aa5c9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1a5ab5647b Vlab::SMT::Eq::visit_children()
;    @     0x7f1a5aa5c9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f1a5ab2b9aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7f1a5ab56450 Vlab::SMT::Eq::accept()
;    @     0x7f1a5aa5c9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1a5ab61f79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f1a5ab54b87 Vlab::SMT::And::visit_children()
;    @     0x7f1a5aa5c9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f1a5ab2a9ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7f1a5ab54b5c Vlab::SMT::And::accept()
;    @     0x7f1a5aa5c9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1a5ab52ddf Vlab::SMT::Assert::visit_children()
;    @     0x7f1a5aa5c9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f1a5ab2a739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7f1a5ab52d2a Vlab::SMT::Assert::accept()
;    @     0x7f1a5aa5c9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1a5ab61699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f1a5ab52067 Vlab::SMT::Script::visit_children()
;    @     0x7f1a5aa5c9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f1a5ab2a703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7f1a5ab5203c Vlab::SMT::Script::accept()
;    @     0x7f1a5aa5c9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1a5ab2a669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7f1a5ab39ecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7f1a5ab3e7a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7f1a5aa42b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f1a59b9e830 __libc_start_main
