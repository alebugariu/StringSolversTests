(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (= (str.contains (str.++ tmp_str0 tmp_str0) (str.at tmp_str0 tmp_int4)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;actual status: not_implemented
;F0818 17:37:03.782299  3128 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f3c79873f5d  google::LogMessage::Fail()
;    @     0x7f3c79876513  google::LogMessage::SendToLog()
;    @     0x7f3c79873aeb  google::LogMessage::Flush()
;    @     0x7f3c7987545e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f3c79f73fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f3c79f89842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f3c79f888f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f3c79ec2102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f3c79ec607b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f3c79de4dab  std::function<>::operator()()
;    @     0x7f3c79de2844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f3c79ee0cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f3c79de49ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3c79de3bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f3c79ec2a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f3c79edcb5c  Vlab::SMT::And::accept()
;    @     0x7f3c79de49ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3c79ec1ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f3c79ec748c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f3c79edcb5c  Vlab::SMT::And::accept()
;    @     0x7f3c79de49ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3c79ed0a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f3c79ec83e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f3c79edcebe  Vlab::SMT::Or::accept()
;    @     0x7f3c79de49ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3c79ed0a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f3c79ec6d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f3c79edad2a  Vlab::SMT::Assert::accept()
;    @     0x7f3c79de49ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3c79ee9699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f3c79eda067  Vlab::SMT::Script::visit_children()
;    @     0x7f3c79de49e0  Vlab::SMT::Visitor::visit_children_of()
