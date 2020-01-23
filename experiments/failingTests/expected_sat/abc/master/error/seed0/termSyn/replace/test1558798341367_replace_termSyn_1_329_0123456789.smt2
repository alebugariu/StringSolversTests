(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int22 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (= (str.replace (str.replace tmp_str0 tmp_str0 tmp_str0) (str.substr tmp_str0 tmp_int5 tmp_int5) (int.to.str tmp_int5)) (str.at tmp_str0 tmp_int22)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_int22 = 0
;actual status: not_implemented
;I0818 17:37:15.730653  3241 UnaryAutomaton.cpp:325] 1
;I0818 17:37:15.730696  3241 UnaryAutomaton.cpp:326] 1
;I0818 17:37:15.730707  3241 UnaryAutomaton.cpp:327] 1
;I0818 17:37:15.736202  3241 SymbolTable.cpp:304] tmp_int22,1
;F0818 17:37:15.788004  3241 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f364e3a6f5d  google::LogMessage::Fail()
;    @     0x7f364e3a9513  google::LogMessage::SendToLog()
;    @     0x7f364e3a6aeb  google::LogMessage::Flush()
;    @     0x7f364e3a845e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f364e9caa26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f364ea18992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f364e9179ad  Vlab::SMT::Visitor::visit()
;    @     0x7f364e9c9762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f364ea15df0  Vlab::SMT::ToString::accept()
;    @     0x7f364e9179ad  Vlab::SMT::Visitor::visit()
;    @     0x7f364e9c9f86  Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f364ea16400  Vlab::SMT::Replace::accept()
;    @     0x7f364e9179ad  Vlab::SMT::Visitor::visit()
;    @     0x7f364e9c47f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f364ea11450  Vlab::SMT::Eq::accept()
;    @     0x7f364e9179ad  Vlab::SMT::Visitor::visit()
;    @     0x7f364e9c2878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f364ea035ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f364e9fa96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f364ea0fb5c  Vlab::SMT::And::accept()
;    @     0x7f364e9179ad  Vlab::SMT::Visitor::visit()
;    @     0x7f364ea03a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f364e9f9d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f364ea0dd2a  Vlab::SMT::Assert::accept()
;    @     0x7f364e9179ad  Vlab::SMT::Visitor::visit()
;    @     0x7f364ea1c699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f364ea0d067  Vlab::SMT::Script::visit_children()
;    @     0x7f364e9179e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f364e9f9b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f364ea0d03c  Vlab::SMT::Script::accept()
;    @     0x7f364e9179ad  Vlab::SMT::Visitor::visit()
;    @     0x7f364e9f97bb  Vlab::Solver::ConstraintSolver::start()
