(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (= (str.contains (str.replace tmp_str0 tmp_str0 tmp_str0) (str.at tmp_str0 tmp_int5)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;actual status: not_implemented
;F0818 17:36:57.878469  3080 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7ff8056fcf5d  google::LogMessage::Fail()
;    @     0x7ff8056ff513  google::LogMessage::SendToLog()
;    @     0x7ff8056fcaeb  google::LogMessage::Flush()
;    @     0x7ff8056fe45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7ff805dfcfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7ff805e12842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7ff805e118f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7ff805d4b102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7ff805d4f07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7ff805c6ddab  std::function<>::operator()()
;    @     0x7ff805c6b844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7ff805d69cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7ff805c6d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff805c6cbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7ff805d4ba21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7ff805d65b5c  Vlab::SMT::And::accept()
;    @     0x7ff805c6d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff805d4aca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7ff805d5048c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7ff805d65b5c  Vlab::SMT::And::accept()
;    @     0x7ff805c6d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff805d59a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7ff805d513e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7ff805d65ebe  Vlab::SMT::Or::accept()
;    @     0x7ff805c6d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff805d59a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7ff805d4fd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7ff805d63d2a  Vlab::SMT::Assert::accept()
;    @     0x7ff805c6d9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff805d72699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7ff805d63067  Vlab::SMT::Script::visit_children()
;    @     0x7ff805c6d9e0  Vlab::SMT::Visitor::visit_children_of()
