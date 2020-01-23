(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.suffixof (int.to.str tmp_int0) (str.++ tmp_str2 tmp_str2)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:25.105152  2774 UnaryAutomaton.cpp:325] 1
;I0818 17:36:25.105173  2774 UnaryAutomaton.cpp:326] 1
;I0818 17:36:25.105183  2774 UnaryAutomaton.cpp:327] 1
;F0818 17:36:25.117128  2774 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f1a303c8f5d  google::LogMessage::Fail()
;    @     0x7f1a303cb513  google::LogMessage::SendToLog()
;    @     0x7f1a303c8aeb  google::LogMessage::Flush()
;    @     0x7f1a303ca45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f1a30ac8fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f1a30ade842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f1a30add8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f1a30a17102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f1a30a1b07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f1a30939dab  std::function<>::operator()()
;    @     0x7f1a30937844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f1a30a35cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f1a309399ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1a30938bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f1a30a17a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f1a30a31b5c  Vlab::SMT::And::accept()
;    @     0x7f1a309399ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1a30a16ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f1a30a1c48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f1a30a31b5c  Vlab::SMT::And::accept()
;    @     0x7f1a309399ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1a30a25a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f1a30a1d3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f1a30a31ebe  Vlab::SMT::Or::accept()
;    @     0x7f1a309399ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1a30a25a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f1a30a1bd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f1a30a2fd2a  Vlab::SMT::Assert::accept()
;    @     0x7f1a309399ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1a30a3e699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f1a30a2f067  Vlab::SMT::Script::visit_children()
;    @     0x7f1a309399e0  Vlab::SMT::Visitor::visit_children_of()
