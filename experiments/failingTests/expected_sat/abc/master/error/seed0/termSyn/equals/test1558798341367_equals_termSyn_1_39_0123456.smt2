(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (= (str.substr tmp_str0 tmp_int1 tmp_int1) (int.to.str tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:38.808739  2923 UnaryAutomaton.cpp:325] 1
;I0818 17:36:38.808758  2923 UnaryAutomaton.cpp:326] 1
;I0818 17:36:38.808766  2923 UnaryAutomaton.cpp:327] 1
;F0818 17:36:38.813513  2923 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f4eb7fb1f5d  google::LogMessage::Fail()
;    @     0x7f4eb7fb4513  google::LogMessage::SendToLog()
;    @     0x7f4eb7fb1aeb  google::LogMessage::Flush()
;    @     0x7f4eb7fb345e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f4eb86b1fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f4eb86c7842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f4eb86c68f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f4eb8600102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f4eb860407b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f4eb8522dab  std::function<>::operator()()
;    @     0x7f4eb8520844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f4eb861ecb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f4eb85229ad  Vlab::SMT::Visitor::visit()
;    @     0x7f4eb8521bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f4eb8600a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f4eb861ab5c  Vlab::SMT::And::accept()
;    @     0x7f4eb85229ad  Vlab::SMT::Visitor::visit()
;    @     0x7f4eb85ffca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f4eb860548c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f4eb861ab5c  Vlab::SMT::And::accept()
;    @     0x7f4eb85229ad  Vlab::SMT::Visitor::visit()
;    @     0x7f4eb860ea82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f4eb86063e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f4eb861aebe  Vlab::SMT::Or::accept()
;    @     0x7f4eb85229ad  Vlab::SMT::Visitor::visit()
;    @     0x7f4eb860ea82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f4eb8604d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f4eb8618d2a  Vlab::SMT::Assert::accept()
;    @     0x7f4eb85229ad  Vlab::SMT::Visitor::visit()
;    @     0x7f4eb8627699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f4eb8618067  Vlab::SMT::Script::visit_children()
;    @     0x7f4eb85229e0  Vlab::SMT::Visitor::visit_children_of()
