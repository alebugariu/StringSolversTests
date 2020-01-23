(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0) (int.to.str tmp_int0)) (str.at tmp_str2 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:37:12.892207  3213 UnaryAutomaton.cpp:325] 1
;I0818 17:37:12.892235  3213 UnaryAutomaton.cpp:326] 1
;I0818 17:37:12.892243  3213 UnaryAutomaton.cpp:327] 1
;I0818 17:37:12.910024  3213 UnaryAutomaton.cpp:325] 1
;I0818 17:37:12.916334  3213 UnaryAutomaton.cpp:326] 1
;I0818 17:37:12.916370  3213 UnaryAutomaton.cpp:327] 1
;F0818 17:37:12.961011  3213 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7fcd08e71f5d  google::LogMessage::Fail()
;    @     0x7fcd08e74513  google::LogMessage::SendToLog()
;    @     0x7fcd08e71aeb  google::LogMessage::Flush()
;    @     0x7fcd08e7345e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fcd09495a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7fcd094e3992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7fcd093e29ad  Vlab::SMT::Visitor::visit()
;    @     0x7fcd09494762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7fcd094e0df0  Vlab::SMT::ToString::accept()
;    @     0x7fcd093e29ad  Vlab::SMT::Visitor::visit()
;    @     0x7fcd09494f86  Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fcd094e1400  Vlab::SMT::Replace::accept()
;    @     0x7fcd093e29ad  Vlab::SMT::Visitor::visit()
;    @     0x7fcd0948f7f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fcd094dc450  Vlab::SMT::Eq::accept()
;    @     0x7fcd093e29ad  Vlab::SMT::Visitor::visit()
;    @     0x7fcd0948d878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7fcd094ce5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fcd094c596e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fcd094dab5c  Vlab::SMT::And::accept()
;    @     0x7fcd093e29ad  Vlab::SMT::Visitor::visit()
;    @     0x7fcd094cea82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fcd094c4d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fcd094d8d2a  Vlab::SMT::Assert::accept()
;    @     0x7fcd093e29ad  Vlab::SMT::Visitor::visit()
;    @     0x7fcd094e7699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fcd094d8067  Vlab::SMT::Script::visit_children()
;    @     0x7fcd093e29e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fcd094c4b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fcd094d803c  Vlab::SMT::Script::accept()
;    @     0x7fcd093e29ad  Vlab::SMT::Visitor::visit()
;    @     0x7fcd094c47bb  Vlab::Solver::ConstraintSolver::start()
