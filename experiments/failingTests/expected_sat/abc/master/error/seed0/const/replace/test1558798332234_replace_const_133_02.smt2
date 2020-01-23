(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "-1a"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str2 = -1
;actual status: not_implemented
;PC: @     0x7fe1e8962ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2403 (TID 0x7fe267d50740) from PID 0; stack trace: ***
;    @     0x7fe2667a04b0 (unknown)
;    @     0x7fe1e8962ed6 dfaProject
;    @     0x7fe2677727ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fe267804318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fe2676fbf05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fe267748400 Vlab::SMT::Replace::accept()
;    @     0x7fe2676499ad Vlab::SMT::Visitor::visit()
;    @     0x7fe2676f67f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fe267743450 Vlab::SMT::Eq::accept()
;    @     0x7fe2676499ad Vlab::SMT::Visitor::visit()
;    @     0x7fe2676f4878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fe2677355ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fe26772c96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fe267741b5c Vlab::SMT::And::accept()
;    @     0x7fe2676499ad Vlab::SMT::Visitor::visit()
;    @     0x7fe267735a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fe26772bd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fe26773fd2a Vlab::SMT::Assert::accept()
;    @     0x7fe2676499ad Vlab::SMT::Visitor::visit()
;    @     0x7fe26774e699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fe26773f067 Vlab::SMT::Script::visit_children()
;    @     0x7fe2676499e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fe26772bb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fe26773f03c Vlab::SMT::Script::accept()
;    @     0x7fe2676499ad Vlab::SMT::Visitor::visit()
;    @     0x7fe26772b7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fe26762fb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fe26678b830 __libc_start_main
;    @           0x40de89 _start
