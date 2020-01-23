(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "2"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;tmp_str2 = 2
;actual status: not_implemented
;PC: @     0x7f65082f8ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2628 (TID 0x7f65876e6740) from PID 0; stack trace: ***
;    @     0x7f65861364b0 (unknown)
;    @     0x7f65082f8ed6 dfaProject
;    @     0x7f65871087ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f658719a318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f6587091f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f65870de400 Vlab::SMT::Replace::accept()
;    @     0x7f6586fdf9ad Vlab::SMT::Visitor::visit()
;    @     0x7f658708c7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f65870d9450 Vlab::SMT::Eq::accept()
;    @     0x7f6586fdf9ad Vlab::SMT::Visitor::visit()
;    @     0x7f658708a878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f65870cb5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f65870c296e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f65870d7b5c Vlab::SMT::And::accept()
;    @     0x7f6586fdf9ad Vlab::SMT::Visitor::visit()
;    @     0x7f65870cba82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f65870c1d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f65870d5d2a Vlab::SMT::Assert::accept()
;    @     0x7f6586fdf9ad Vlab::SMT::Visitor::visit()
;    @     0x7f65870e4699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f65870d5067 Vlab::SMT::Script::visit_children()
;    @     0x7f6586fdf9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f65870c1b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f65870d503c Vlab::SMT::Script::accept()
;    @     0x7f6586fdf9ad Vlab::SMT::Visitor::visit()
;    @     0x7f65870c17bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f6586fc5b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f6586121830 __libc_start_main
;    @           0x40de89 _start
