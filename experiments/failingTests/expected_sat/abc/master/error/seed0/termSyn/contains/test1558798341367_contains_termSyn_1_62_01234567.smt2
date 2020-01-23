(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.contains (str.substr tmp_str0 tmp_int1 tmp_int1) (str.at tmp_str0 tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:37:09.142048  3172 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f1b838b5f5d  google::LogMessage::Fail()
;    @     0x7f1b838b8513  google::LogMessage::SendToLog()
;    @     0x7f1b838b5aeb  google::LogMessage::Flush()
;    @     0x7f1b838b745e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f1b83fb5fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f1b83fcb842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f1b83fca8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f1b83f04102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f1b83f0807b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f1b83e26dab  std::function<>::operator()()
;    @     0x7f1b83e24844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f1b83f22cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f1b83e269ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1b83e25bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f1b83f04a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f1b83f1eb5c  Vlab::SMT::And::accept()
;    @     0x7f1b83e269ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1b83f03ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f1b83f0948c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f1b83f1eb5c  Vlab::SMT::And::accept()
;    @     0x7f1b83e269ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1b83f12a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f1b83f0a3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f1b83f1eebe  Vlab::SMT::Or::accept()
;    @     0x7f1b83e269ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1b83f12a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f1b83f08d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f1b83f1cd2a  Vlab::SMT::Assert::accept()
;    @     0x7f1b83e269ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1b83f2b699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f1b83f1c067  Vlab::SMT::Script::visit_children()
;    @     0x7f1b83e269e0  Vlab::SMT::Visitor::visit_children_of()
