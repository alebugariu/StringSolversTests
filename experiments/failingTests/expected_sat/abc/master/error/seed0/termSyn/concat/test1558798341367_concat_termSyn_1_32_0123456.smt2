(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str12 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.++ (int.to.str tmp_int0) (str.++ tmp_str2 tmp_str2)) (str.replace tmp_str2 tmp_str12 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str12 = 
;actual status: not_implemented
;PC: @     0x7f4509f27f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3371 (TID 0x7f450a559740) from PID 0; stack trace: ***
;    @     0x7f4508fa94b0 (unknown)
;    @     0x7f4509f27f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7f4509f4d76c Vlab::SMT::Concat::accept()
;    @     0x7f4509e529ad Vlab::SMT::Visitor::visit()
;    @     0x7f4509f4c47b Vlab::SMT::Eq::visit_children()
;    @     0x7f4509e529e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f4509f219aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7f4509f4c450 Vlab::SMT::Eq::accept()
;    @     0x7f4509e529ad Vlab::SMT::Visitor::visit()
;    @     0x7f4509f57f79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f4509f4ab87 Vlab::SMT::And::visit_children()
;    @     0x7f4509e529e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f4509f209ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7f4509f4ab5c Vlab::SMT::And::accept()
;    @     0x7f4509e529ad Vlab::SMT::Visitor::visit()
;    @     0x7f4509f48ddf Vlab::SMT::Assert::visit_children()
;    @     0x7f4509e529e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f4509f20739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7f4509f48d2a Vlab::SMT::Assert::accept()
;    @     0x7f4509e529ad Vlab::SMT::Visitor::visit()
;    @     0x7f4509f57699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f4509f48067 Vlab::SMT::Script::visit_children()
;    @     0x7f4509e529e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f4509f20703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7f4509f4803c Vlab::SMT::Script::accept()
;    @     0x7f4509e529ad Vlab::SMT::Visitor::visit()
;    @     0x7f4509f20669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7f4509f2fecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7f4509f347a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7f4509e38b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f4508f94830 __libc_start_main
