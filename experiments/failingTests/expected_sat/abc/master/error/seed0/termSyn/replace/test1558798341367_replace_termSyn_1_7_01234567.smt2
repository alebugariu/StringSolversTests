(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.at tmp_str0 tmp_int1) (str.at tmp_str0 tmp_int1) (int.to.str tmp_int1)) (str.at tmp_str0 tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:11.338013  3197 UnaryAutomaton.cpp:325] 1
;I0818 17:37:11.338055  3197 UnaryAutomaton.cpp:326] 1
;I0818 17:37:11.338066  3197 UnaryAutomaton.cpp:327] 1
;F0818 17:37:11.406200  3197 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7fd70ab97f5d  google::LogMessage::Fail()
;    @     0x7fd70ab9a513  google::LogMessage::SendToLog()
;    @     0x7fd70ab97aeb  google::LogMessage::Flush()
;    @     0x7fd70ab9945e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fd70b1bba26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7fd70b209992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7fd70b1089ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd70b1ba762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7fd70b206df0  Vlab::SMT::ToString::accept()
;    @     0x7fd70b1089ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd70b1baf86  Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fd70b207400  Vlab::SMT::Replace::accept()
;    @     0x7fd70b1089ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd70b1b57f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fd70b202450  Vlab::SMT::Eq::accept()
;    @     0x7fd70b1089ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd70b1b3878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7fd70b1f45ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fd70b1eb96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fd70b200b5c  Vlab::SMT::And::accept()
;    @     0x7fd70b1089ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd70b1f4a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fd70b1ead2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fd70b1fed2a  Vlab::SMT::Assert::accept()
;    @     0x7fd70b1089ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd70b20d699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fd70b1fe067  Vlab::SMT::Script::visit_children()
;    @     0x7fd70b1089e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fd70b1eab35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fd70b1fe03c  Vlab::SMT::Script::accept()
;    @     0x7fd70b1089ad  Vlab::SMT::Visitor::visit()
;    @     0x7fd70b1ea7bb  Vlab::Solver::ConstraintSolver::start()
