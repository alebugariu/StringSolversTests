(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "-12"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 2
;tmp_str2 = -1
;actual status: not_implemented
;PC: @     0x7fd98d44fed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2550 (TID 0x7fda0c83d740) from PID 0; stack trace: ***
;    @     0x7fda0b28d4b0 (unknown)
;    @     0x7fd98d44fed6 dfaProject
;    @     0x7fda0c25f7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fda0c2f1318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fda0c1e8f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fda0c235400 Vlab::SMT::Replace::accept()
;    @     0x7fda0c1369ad Vlab::SMT::Visitor::visit()
;    @     0x7fda0c1e37f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fda0c230450 Vlab::SMT::Eq::accept()
;    @     0x7fda0c1369ad Vlab::SMT::Visitor::visit()
;    @     0x7fda0c1e1878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fda0c2225ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fda0c21996e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fda0c22eb5c Vlab::SMT::And::accept()
;    @     0x7fda0c1369ad Vlab::SMT::Visitor::visit()
;    @     0x7fda0c222a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fda0c218d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fda0c22cd2a Vlab::SMT::Assert::accept()
;    @     0x7fda0c1369ad Vlab::SMT::Visitor::visit()
;    @     0x7fda0c23b699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fda0c22c067 Vlab::SMT::Script::visit_children()
;    @     0x7fda0c1369e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fda0c218b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fda0c22c03c Vlab::SMT::Script::accept()
;    @     0x7fda0c1369ad Vlab::SMT::Visitor::visit()
;    @     0x7fda0c2187bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fda0c11cb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fda0b278830 __libc_start_main
;    @           0x40de89 _start
