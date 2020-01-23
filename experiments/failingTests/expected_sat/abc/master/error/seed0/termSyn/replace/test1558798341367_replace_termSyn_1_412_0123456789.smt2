(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.substr tmp_str0 tmp_int1 tmp_int1) (str.replace tmp_str0 tmp_str0 tmp_str0) (int.to.str tmp_int1)) (str.at tmp_str0 tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:14.876933  3233 UnaryAutomaton.cpp:325] 1
;I0818 17:37:14.876960  3233 UnaryAutomaton.cpp:326] 1
;I0818 17:37:14.876968  3233 UnaryAutomaton.cpp:327] 1
;F0818 17:37:14.933904  3233 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f2761d84f5d  google::LogMessage::Fail()
;    @     0x7f2761d87513  google::LogMessage::SendToLog()
;    @     0x7f2761d84aeb  google::LogMessage::Flush()
;    @     0x7f2761d8645e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f27623a8a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f27623f6992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f27622f59ad  Vlab::SMT::Visitor::visit()
;    @     0x7f27623a7762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f27623f3df0  Vlab::SMT::ToString::accept()
;    @     0x7f27622f59ad  Vlab::SMT::Visitor::visit()
;    @     0x7f27623a7f86  Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f27623f4400  Vlab::SMT::Replace::accept()
;    @     0x7f27622f59ad  Vlab::SMT::Visitor::visit()
;    @     0x7f27623a27f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f27623ef450  Vlab::SMT::Eq::accept()
;    @     0x7f27622f59ad  Vlab::SMT::Visitor::visit()
;    @     0x7f27623a0878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f27623e15ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f27623d896e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f27623edb5c  Vlab::SMT::And::accept()
;    @     0x7f27622f59ad  Vlab::SMT::Visitor::visit()
;    @     0x7f27623e1a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f27623d7d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f27623ebd2a  Vlab::SMT::Assert::accept()
;    @     0x7f27622f59ad  Vlab::SMT::Visitor::visit()
;    @     0x7f27623fa699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f27623eb067  Vlab::SMT::Script::visit_children()
;    @     0x7f27622f59e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f27623d7b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f27623eb03c  Vlab::SMT::Script::accept()
;    @     0x7f27622f59ad  Vlab::SMT::Visitor::visit()
;    @     0x7f27623d77bb  Vlab::Solver::ConstraintSolver::start()
