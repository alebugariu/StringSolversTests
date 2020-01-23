(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str10 () String)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.++ (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0)) (str.++ tmp_str10 tmp_str10)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str10 = 
;actual status: not_implemented
;PC: @     0x7f7a9898ef46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3380 (TID 0x7f7a98fc0740) from PID 0; stack trace: ***
;    @     0x7f7a97a104b0 (unknown)
;    @     0x7f7a9898ef46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7f7a989b476c Vlab::SMT::Concat::accept()
;    @     0x7f7a988b99ad Vlab::SMT::Visitor::visit()
;    @     0x7f7a989b347b Vlab::SMT::Eq::visit_children()
;    @     0x7f7a988b99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f7a989889aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7f7a989b3450 Vlab::SMT::Eq::accept()
;    @     0x7f7a988b99ad Vlab::SMT::Visitor::visit()
;    @     0x7f7a989bef79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f7a989b1b87 Vlab::SMT::And::visit_children()
;    @     0x7f7a988b99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f7a989879ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7f7a989b1b5c Vlab::SMT::And::accept()
;    @     0x7f7a988b99ad Vlab::SMT::Visitor::visit()
;    @     0x7f7a989afddf Vlab::SMT::Assert::visit_children()
;    @     0x7f7a988b99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f7a98987739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7f7a989afd2a Vlab::SMT::Assert::accept()
;    @     0x7f7a988b99ad Vlab::SMT::Visitor::visit()
;    @     0x7f7a989be699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f7a989af067 Vlab::SMT::Script::visit_children()
;    @     0x7f7a988b99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f7a98987703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7f7a989af03c Vlab::SMT::Script::accept()
;    @     0x7f7a988b99ad Vlab::SMT::Visitor::visit()
;    @     0x7f7a98987669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7f7a98996ecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7f7a9899b7a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7f7a9889fb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f7a979fb830 __libc_start_main
