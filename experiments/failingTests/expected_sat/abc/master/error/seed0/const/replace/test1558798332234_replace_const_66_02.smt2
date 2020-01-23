(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "a\"a\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = "a"
;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7f5d58b8ded6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2312 (TID 0x7f5dd7f7b740) from PID 0; stack trace: ***
;    @     0x7f5dd69cb4b0 (unknown)
;    @     0x7f5d58b8ded6 dfaProject
;    @     0x7f5dd799d7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f5dd7a2f318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f5dd7926f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f5dd7973400 Vlab::SMT::Replace::accept()
;    @     0x7f5dd78749ad Vlab::SMT::Visitor::visit()
;    @     0x7f5dd79217f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f5dd796e450 Vlab::SMT::Eq::accept()
;    @     0x7f5dd78749ad Vlab::SMT::Visitor::visit()
;    @     0x7f5dd791f878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f5dd79605ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f5dd795796e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f5dd796cb5c Vlab::SMT::And::accept()
;    @     0x7f5dd78749ad Vlab::SMT::Visitor::visit()
;    @     0x7f5dd7960a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f5dd7956d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f5dd796ad2a Vlab::SMT::Assert::accept()
;    @     0x7f5dd78749ad Vlab::SMT::Visitor::visit()
;    @     0x7f5dd7979699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f5dd796a067 Vlab::SMT::Script::visit_children()
;    @     0x7f5dd78749e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f5dd7956b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f5dd796a03c Vlab::SMT::Script::accept()
;    @     0x7f5dd78749ad Vlab::SMT::Visitor::visit()
;    @     0x7f5dd79567bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f5dd785ab84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f5dd69b6830 __libc_start_main
;    @           0x40de89 _start
