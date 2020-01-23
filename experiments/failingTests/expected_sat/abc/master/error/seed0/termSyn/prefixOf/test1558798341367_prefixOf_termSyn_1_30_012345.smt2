(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.prefixof (int.to.str tmp_int0) (str.++ tmp_str2 tmp_str2)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:30.233564  2830 UnaryAutomaton.cpp:325] 1
;I0818 17:36:30.233613  2830 UnaryAutomaton.cpp:326] 1
;I0818 17:36:30.233623  2830 UnaryAutomaton.cpp:327] 1
;F0818 17:36:30.248816  2830 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f8ec22c1f5d  google::LogMessage::Fail()
;    @     0x7f8ec22c4513  google::LogMessage::SendToLog()
;    @     0x7f8ec22c1aeb  google::LogMessage::Flush()
;    @     0x7f8ec22c345e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f8ec29c1fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f8ec29d7842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f8ec29d68f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f8ec2910102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f8ec291407b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f8ec2832dab  std::function<>::operator()()
;    @     0x7f8ec2830844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f8ec292ecb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f8ec28329ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8ec2831bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f8ec2910a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f8ec292ab5c  Vlab::SMT::And::accept()
;    @     0x7f8ec28329ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8ec290fca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f8ec291548c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f8ec292ab5c  Vlab::SMT::And::accept()
;    @     0x7f8ec28329ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8ec291ea82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f8ec29163e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f8ec292aebe  Vlab::SMT::Or::accept()
;    @     0x7f8ec28329ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8ec291ea82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f8ec2914d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f8ec2928d2a  Vlab::SMT::Assert::accept()
;    @     0x7f8ec28329ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8ec2937699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f8ec2928067  Vlab::SMT::Script::visit_children()
;    @     0x7f8ec28329e0  Vlab::SMT::Visitor::visit_children_of()
