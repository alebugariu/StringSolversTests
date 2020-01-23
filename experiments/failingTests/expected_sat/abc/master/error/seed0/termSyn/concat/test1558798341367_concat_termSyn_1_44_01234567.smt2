(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.++ (int.to.str tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0)) (str.replace tmp_str2 tmp_str2 tmp_str12)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str12 = 
;actual status: not_implemented
;PC: @     0x7f67b7a43f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3365 (TID 0x7f67b8075740) from PID 0; stack trace: ***
;    @     0x7f67b6ac54b0 (unknown)
;    @     0x7f67b7a43f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7f67b7a6976c Vlab::SMT::Concat::accept()
;    @     0x7f67b796e9ad Vlab::SMT::Visitor::visit()
;    @     0x7f67b7a6847b Vlab::SMT::Eq::visit_children()
;    @     0x7f67b796e9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f67b7a3d9aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7f67b7a68450 Vlab::SMT::Eq::accept()
;    @     0x7f67b796e9ad Vlab::SMT::Visitor::visit()
;    @     0x7f67b7a73f79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f67b7a66b87 Vlab::SMT::And::visit_children()
;    @     0x7f67b796e9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f67b7a3c9ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7f67b7a66b5c Vlab::SMT::And::accept()
;    @     0x7f67b796e9ad Vlab::SMT::Visitor::visit()
;    @     0x7f67b7a64ddf Vlab::SMT::Assert::visit_children()
;    @     0x7f67b796e9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f67b7a3c739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7f67b7a64d2a Vlab::SMT::Assert::accept()
;    @     0x7f67b796e9ad Vlab::SMT::Visitor::visit()
;    @     0x7f67b7a73699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f67b7a64067 Vlab::SMT::Script::visit_children()
;    @     0x7f67b796e9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f67b7a3c703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7f67b7a6403c Vlab::SMT::Script::accept()
;    @     0x7f67b796e9ad Vlab::SMT::Visitor::visit()
;    @     0x7f67b7a3c669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7f67b7a4becd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7f67b7a507a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7f67b7954b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f67b6ab0830 __libc_start_main
