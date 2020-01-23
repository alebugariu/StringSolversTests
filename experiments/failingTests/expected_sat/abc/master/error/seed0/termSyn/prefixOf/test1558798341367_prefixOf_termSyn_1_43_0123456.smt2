(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.prefixof (int.to.str tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:29.864481  2826 UnaryAutomaton.cpp:325] 1
;I0818 17:36:29.864511  2826 UnaryAutomaton.cpp:326] 1
;I0818 17:36:29.864519  2826 UnaryAutomaton.cpp:327] 1
;F0818 17:36:29.889385  2826 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f07524f4f5d  google::LogMessage::Fail()
;    @     0x7f07524f7513  google::LogMessage::SendToLog()
;    @     0x7f07524f4aeb  google::LogMessage::Flush()
;    @     0x7f07524f645e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f0752bf4fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f0752c0a842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f0752c098f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f0752b43102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f0752b4707b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f0752a65dab  std::function<>::operator()()
;    @     0x7f0752a63844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f0752b61cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f0752a659ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0752a64bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f0752b43a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f0752b5db5c  Vlab::SMT::And::accept()
;    @     0x7f0752a659ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0752b42ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f0752b4848c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f0752b5db5c  Vlab::SMT::And::accept()
;    @     0x7f0752a659ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0752b51a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f0752b493e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f0752b5debe  Vlab::SMT::Or::accept()
;    @     0x7f0752a659ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0752b51a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f0752b47d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f0752b5bd2a  Vlab::SMT::Assert::accept()
;    @     0x7f0752a659ad  Vlab::SMT::Visitor::visit()
;    @     0x7f0752b6a699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f0752b5b067  Vlab::SMT::Script::visit_children()
;    @     0x7f0752a659e0  Vlab::SMT::Visitor::visit_children_of()
