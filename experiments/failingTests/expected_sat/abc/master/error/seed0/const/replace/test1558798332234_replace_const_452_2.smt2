(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "2" "" tmp_str2) "\n2"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = \n
;actual status: not_implemented
;PC: @     0x7f07f324ded6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2552 (TID 0x7f087263b740) from PID 0; stack trace: ***
;    @     0x7f087108b4b0 (unknown)
;    @     0x7f07f324ded6 dfaProject
;    @     0x7f087205d7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f08720ef318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f0871fe6f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f0872033400 Vlab::SMT::Replace::accept()
;    @     0x7f0871f349ad Vlab::SMT::Visitor::visit()
;    @     0x7f0871fe17f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f087202e450 Vlab::SMT::Eq::accept()
;    @     0x7f0871f349ad Vlab::SMT::Visitor::visit()
;    @     0x7f0871fdf878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f08720205ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f087201796e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f087202cb5c Vlab::SMT::And::accept()
;    @     0x7f0871f349ad Vlab::SMT::Visitor::visit()
;    @     0x7f0872020a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f0872016d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f087202ad2a Vlab::SMT::Assert::accept()
;    @     0x7f0871f349ad Vlab::SMT::Visitor::visit()
;    @     0x7f0872039699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f087202a067 Vlab::SMT::Script::visit_children()
;    @     0x7f0871f349e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f0872016b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f087202a03c Vlab::SMT::Script::accept()
;    @     0x7f0871f349ad Vlab::SMT::Visitor::visit()
;    @     0x7f08720167bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f0871f1ab84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f0871076830 __libc_start_main
;    @           0x40de89 _start
