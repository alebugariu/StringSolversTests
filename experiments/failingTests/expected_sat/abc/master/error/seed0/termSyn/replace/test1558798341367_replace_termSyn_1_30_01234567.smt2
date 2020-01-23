(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.at tmp_str0 tmp_int1) (str.++ tmp_str0 tmp_str0) (int.to.str tmp_int1)) (str.at tmp_str0 tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:15.499895  3239 UnaryAutomaton.cpp:325] 1
;I0818 17:37:15.502014  3239 UnaryAutomaton.cpp:326] 1
;I0818 17:37:15.502032  3239 UnaryAutomaton.cpp:327] 1
;F0818 17:37:15.568706  3239 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7fdff63d6f5d  google::LogMessage::Fail()
;    @     0x7fdff63d9513  google::LogMessage::SendToLog()
;    @     0x7fdff63d6aeb  google::LogMessage::Flush()
;    @     0x7fdff63d845e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fdff69faa26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7fdff6a48992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7fdff69479ad  Vlab::SMT::Visitor::visit()
;    @     0x7fdff69f9762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7fdff6a45df0  Vlab::SMT::ToString::accept()
;    @     0x7fdff69479ad  Vlab::SMT::Visitor::visit()
;    @     0x7fdff69f9f86  Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fdff6a46400  Vlab::SMT::Replace::accept()
;    @     0x7fdff69479ad  Vlab::SMT::Visitor::visit()
;    @     0x7fdff69f47f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fdff6a41450  Vlab::SMT::Eq::accept()
;    @     0x7fdff69479ad  Vlab::SMT::Visitor::visit()
;    @     0x7fdff69f2878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7fdff6a335ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fdff6a2a96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fdff6a3fb5c  Vlab::SMT::And::accept()
;    @     0x7fdff69479ad  Vlab::SMT::Visitor::visit()
;    @     0x7fdff6a33a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fdff6a29d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fdff6a3dd2a  Vlab::SMT::Assert::accept()
;    @     0x7fdff69479ad  Vlab::SMT::Visitor::visit()
;    @     0x7fdff6a4c699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fdff6a3d067  Vlab::SMT::Script::visit_children()
;    @     0x7fdff69479e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fdff6a29b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fdff6a3d03c  Vlab::SMT::Script::accept()
;    @     0x7fdff69479ad  Vlab::SMT::Visitor::visit()
;    @     0x7fdff6a297bb  Vlab::Solver::ConstraintSolver::start()
