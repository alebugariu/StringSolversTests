(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (= (int.to.str tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:39.152817  2927 UnaryAutomaton.cpp:325] 1
;I0818 17:36:39.152833  2927 UnaryAutomaton.cpp:326] 1
;I0818 17:36:39.152842  2927 UnaryAutomaton.cpp:327] 1
;F0818 17:36:39.162235  2927 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fc7bf968f5d  google::LogMessage::Fail()
;    @     0x7fc7bf96b513  google::LogMessage::SendToLog()
;    @     0x7fc7bf968aeb  google::LogMessage::Flush()
;    @     0x7fc7bf96a45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fc7c0068fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fc7c007e842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fc7c007d8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fc7bffb7102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fc7bffbb07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fc7bfed9dab  std::function<>::operator()()
;    @     0x7fc7bfed7844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fc7bffd5cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fc7bfed99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc7bfed8bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fc7bffb7a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fc7bffd1b5c  Vlab::SMT::And::accept()
;    @     0x7fc7bfed99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc7bffb6ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fc7bffbc48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fc7bffd1b5c  Vlab::SMT::And::accept()
;    @     0x7fc7bfed99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc7bffc5a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fc7bffbd3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fc7bffd1ebe  Vlab::SMT::Or::accept()
;    @     0x7fc7bfed99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc7bffc5a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fc7bffbbd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fc7bffcfd2a  Vlab::SMT::Assert::accept()
;    @     0x7fc7bfed99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc7bffde699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fc7bffcf067  Vlab::SMT::Script::visit_children()
;    @     0x7fc7bfed99e0  Vlab::SMT::Visitor::visit_children_of()
