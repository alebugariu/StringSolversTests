(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.prefixof (str.substr tmp_str0 tmp_int1 tmp_int1) (str.replace tmp_str0 tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:35.048768  2880 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fb76d5fef5d  google::LogMessage::Fail()
;    @     0x7fb76d601513  google::LogMessage::SendToLog()
;    @     0x7fb76d5feaeb  google::LogMessage::Flush()
;    @     0x7fb76d60045e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fb76dcfefcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fb76dd14842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fb76dd138f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fb76dc4d102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fb76dc5107b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fb76db6fdab  std::function<>::operator()()
;    @     0x7fb76db6d844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fb76dc6bcb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fb76db6f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb76db6ebee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fb76dc4da21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fb76dc67b5c  Vlab::SMT::And::accept()
;    @     0x7fb76db6f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb76dc4cca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fb76dc5248c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fb76dc67b5c  Vlab::SMT::And::accept()
;    @     0x7fb76db6f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb76dc5ba82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fb76dc533e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fb76dc67ebe  Vlab::SMT::Or::accept()
;    @     0x7fb76db6f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb76dc5ba82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fb76dc51d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fb76dc65d2a  Vlab::SMT::Assert::accept()
;    @     0x7fb76db6f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb76dc74699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fb76dc65067  Vlab::SMT::Script::visit_children()
;    @     0x7fb76db6f9e0  Vlab::SMT::Visitor::visit_children_of()
