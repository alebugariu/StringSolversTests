(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int20 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int7 () Int)
(assert
 (= (str.replace (str.replace tmp_str0 tmp_str0 tmp_str0) (str.++ tmp_str0 tmp_str0) (int.to.str tmp_int7)) (str.at tmp_str0 tmp_int20)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int7 = -1
;tmp_int20 = 0
;actual status: not_implemented
;I0818 17:37:11.522284  3199 UnaryAutomaton.cpp:325] 1
;I0818 17:37:11.522301  3199 UnaryAutomaton.cpp:326] 1
;I0818 17:37:11.522310  3199 UnaryAutomaton.cpp:327] 1
;I0818 17:37:11.527637  3199 SymbolTable.cpp:304] tmp_int20,1
;F0818 17:37:11.617280  3199 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f7c072a8f5d  google::LogMessage::Fail()
;    @     0x7f7c072ab513  google::LogMessage::SendToLog()
;    @     0x7f7c072a8aeb  google::LogMessage::Flush()
;    @     0x7f7c072aa45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f7c078cca26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f7c0791a992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f7c078199ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7c078cb762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f7c07917df0  Vlab::SMT::ToString::accept()
;    @     0x7f7c078199ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7c078cbf86  Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f7c07918400  Vlab::SMT::Replace::accept()
;    @     0x7f7c078199ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7c078c67f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f7c07913450  Vlab::SMT::Eq::accept()
;    @     0x7f7c078199ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7c078c4878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f7c079055ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f7c078fc96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f7c07911b5c  Vlab::SMT::And::accept()
;    @     0x7f7c078199ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7c07905a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f7c078fbd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f7c0790fd2a  Vlab::SMT::Assert::accept()
;    @     0x7f7c078199ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7c0791e699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f7c0790f067  Vlab::SMT::Script::visit_children()
;    @     0x7f7c078199e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f7c078fbb35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f7c0790f03c  Vlab::SMT::Script::accept()
;    @     0x7f7c078199ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7c078fb7bb  Vlab::Solver::ConstraintSolver::start()
