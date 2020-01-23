(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.prefixof (str.at tmp_str0 tmp_int1) (str.substr tmp_str0 tmp_int1 tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:30.071274  2828 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f75e0afff5d  google::LogMessage::Fail()
;    @     0x7f75e0b02513  google::LogMessage::SendToLog()
;    @     0x7f75e0affaeb  google::LogMessage::Flush()
;    @     0x7f75e0b0145e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f75e11fffcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f75e1215842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f75e12148f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f75e114e102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f75e115207b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f75e1070dab  std::function<>::operator()()
;    @     0x7f75e106e844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f75e116ccb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f75e10709ad  Vlab::SMT::Visitor::visit()
;    @     0x7f75e106fbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f75e114ea21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f75e1168b5c  Vlab::SMT::And::accept()
;    @     0x7f75e10709ad  Vlab::SMT::Visitor::visit()
;    @     0x7f75e114dca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f75e115348c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f75e1168b5c  Vlab::SMT::And::accept()
;    @     0x7f75e10709ad  Vlab::SMT::Visitor::visit()
;    @     0x7f75e115ca82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f75e11543e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f75e1168ebe  Vlab::SMT::Or::accept()
;    @     0x7f75e10709ad  Vlab::SMT::Visitor::visit()
;    @     0x7f75e115ca82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f75e1152d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f75e1166d2a  Vlab::SMT::Assert::accept()
;    @     0x7f75e10709ad  Vlab::SMT::Visitor::visit()
;    @     0x7f75e1175699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f75e1166067  Vlab::SMT::Script::visit_children()
;    @     0x7f75e10709e0  Vlab::SMT::Visitor::visit_children_of()
