(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.++ (int.to.str tmp_int0) (str.replace tmp_str2 tmp_str2 tmp_str2)) (str.++ tmp_str2 tmp_str14)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str14 = 
;actual status: not_implemented
;PC: @     0x7f589626df46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3346 (TID 0x7f589689f740) from PID 0; stack trace: ***
;    @     0x7f58952ef4b0 (unknown)
;    @     0x7f589626df46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7f589629376c Vlab::SMT::Concat::accept()
;    @     0x7f58961989ad Vlab::SMT::Visitor::visit()
;    @     0x7f589629247b Vlab::SMT::Eq::visit_children()
;    @     0x7f58961989e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f58962679aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7f5896292450 Vlab::SMT::Eq::accept()
;    @     0x7f58961989ad Vlab::SMT::Visitor::visit()
;    @     0x7f589629df79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f5896290b87 Vlab::SMT::And::visit_children()
;    @     0x7f58961989e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f58962669ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7f5896290b5c Vlab::SMT::And::accept()
;    @     0x7f58961989ad Vlab::SMT::Visitor::visit()
;    @     0x7f589628eddf Vlab::SMT::Assert::visit_children()
;    @     0x7f58961989e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f5896266739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7f589628ed2a Vlab::SMT::Assert::accept()
;    @     0x7f58961989ad Vlab::SMT::Visitor::visit()
;    @     0x7f589629d699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f589628e067 Vlab::SMT::Script::visit_children()
;    @     0x7f58961989e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f5896266703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7f589628e03c Vlab::SMT::Script::accept()
;    @     0x7f58961989ad Vlab::SMT::Visitor::visit()
;    @     0x7f5896266669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7f5896275ecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7f589627a7a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7f589617eb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f58952da830 __libc_start_main
