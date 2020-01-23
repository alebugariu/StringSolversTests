(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "0-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = -1
;tmp_str2 = 0
;actual status: not_implemented
;PC: @     0x7f678a231ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2539 (TID 0x7f680961f740) from PID 0; stack trace: ***
;    @     0x7f680806f4b0 (unknown)
;    @     0x7f678a231ed6 dfaProject
;    @     0x7f68090417ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f68090d3318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f6808fcaf05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f6809017400 Vlab::SMT::Replace::accept()
;    @     0x7f6808f189ad Vlab::SMT::Visitor::visit()
;    @     0x7f6808fc57f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f6809012450 Vlab::SMT::Eq::accept()
;    @     0x7f6808f189ad Vlab::SMT::Visitor::visit()
;    @     0x7f6808fc3878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f68090045ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f6808ffb96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f6809010b5c Vlab::SMT::And::accept()
;    @     0x7f6808f189ad Vlab::SMT::Visitor::visit()
;    @     0x7f6809004a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f6808ffad2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f680900ed2a Vlab::SMT::Assert::accept()
;    @     0x7f6808f189ad Vlab::SMT::Visitor::visit()
;    @     0x7f680901d699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f680900e067 Vlab::SMT::Script::visit_children()
;    @     0x7f6808f189e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f6808ffab35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f680900e03c Vlab::SMT::Script::accept()
;    @     0x7f6808f189ad Vlab::SMT::Visitor::visit()
;    @     0x7f6808ffa7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f6808efeb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f680805a830 __libc_start_main
;    @           0x40de89 _start
