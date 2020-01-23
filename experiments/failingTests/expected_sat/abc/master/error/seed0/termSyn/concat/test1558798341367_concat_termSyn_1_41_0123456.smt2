(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.++ (int.to.str tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0)) (str.at tmp_str2 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7fc3e51e7f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3378 (TID 0x7fc3e5819740) from PID 0; stack trace: ***
;    @     0x7fc3e42694b0 (unknown)
;    @     0x7fc3e51e7f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7fc3e520d76c Vlab::SMT::Concat::accept()
;    @     0x7fc3e51129ad Vlab::SMT::Visitor::visit()
;    @     0x7fc3e520c47b Vlab::SMT::Eq::visit_children()
;    @     0x7fc3e51129e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fc3e51e19aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7fc3e520c450 Vlab::SMT::Eq::accept()
;    @     0x7fc3e51129ad Vlab::SMT::Visitor::visit()
;    @     0x7fc3e5217f79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fc3e520ab87 Vlab::SMT::And::visit_children()
;    @     0x7fc3e51129e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fc3e51e09ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7fc3e520ab5c Vlab::SMT::And::accept()
;    @     0x7fc3e51129ad Vlab::SMT::Visitor::visit()
;    @     0x7fc3e5208ddf Vlab::SMT::Assert::visit_children()
;    @     0x7fc3e51129e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fc3e51e0739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7fc3e5208d2a Vlab::SMT::Assert::accept()
;    @     0x7fc3e51129ad Vlab::SMT::Visitor::visit()
;    @     0x7fc3e5217699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fc3e5208067 Vlab::SMT::Script::visit_children()
;    @     0x7fc3e51129e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fc3e51e0703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7fc3e520803c Vlab::SMT::Script::accept()
;    @     0x7fc3e51129ad Vlab::SMT::Visitor::visit()
;    @     0x7fc3e51e0669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7fc3e51efecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7fc3e51f47a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7fc3e50f8b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fc3e4254830 __libc_start_main
