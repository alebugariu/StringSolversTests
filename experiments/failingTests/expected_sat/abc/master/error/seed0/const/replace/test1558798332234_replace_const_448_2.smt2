(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "2" "" tmp_str2) "2"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: not_implemented
;PC: @     0x7f9ba5c4fed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2529 (TID 0x7f9c2503d740) from PID 0; stack trace: ***
;    @     0x7f9c23a8d4b0 (unknown)
;    @     0x7f9ba5c4fed6 dfaProject
;    @     0x7f9c24a5f7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f9c24af1318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f9c249e8f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f9c24a35400 Vlab::SMT::Replace::accept()
;    @     0x7f9c249369ad Vlab::SMT::Visitor::visit()
;    @     0x7f9c249e37f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f9c24a30450 Vlab::SMT::Eq::accept()
;    @     0x7f9c249369ad Vlab::SMT::Visitor::visit()
;    @     0x7f9c249e1878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f9c24a225ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f9c24a1996e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f9c24a2eb5c Vlab::SMT::And::accept()
;    @     0x7f9c249369ad Vlab::SMT::Visitor::visit()
;    @     0x7f9c24a22a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f9c24a18d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f9c24a2cd2a Vlab::SMT::Assert::accept()
;    @     0x7f9c249369ad Vlab::SMT::Visitor::visit()
;    @     0x7f9c24a3b699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f9c24a2c067 Vlab::SMT::Script::visit_children()
;    @     0x7f9c249369e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f9c24a18b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f9c24a2c03c Vlab::SMT::Script::accept()
;    @     0x7f9c249369ad Vlab::SMT::Visitor::visit()
;    @     0x7f9c24a187bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f9c2491cb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f9c23a78830 __libc_start_main
;    @           0x40de89 _start
