(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.substr tmp_str0 tmp_int1 tmp_int1) (str.++ tmp_str0 tmp_str0) (int.to.str tmp_int1)) (str.at tmp_str0 tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:12.138218  3205 UnaryAutomaton.cpp:325] 1
;I0818 17:37:12.138253  3205 UnaryAutomaton.cpp:326] 1
;I0818 17:37:12.138262  3205 UnaryAutomaton.cpp:327] 1
;F0818 17:37:12.208832  3205 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f5f22cb0f5d  google::LogMessage::Fail()
;    @     0x7f5f22cb3513  google::LogMessage::SendToLog()
;    @     0x7f5f22cb0aeb  google::LogMessage::Flush()
;    @     0x7f5f22cb245e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f5f232d4a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f5f23322992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f5f232219ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5f232d3762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f5f2331fdf0  Vlab::SMT::ToString::accept()
;    @     0x7f5f232219ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5f232d3f86  Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f5f23320400  Vlab::SMT::Replace::accept()
;    @     0x7f5f232219ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5f232ce7f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f5f2331b450  Vlab::SMT::Eq::accept()
;    @     0x7f5f232219ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5f232cc878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f5f2330d5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f5f2330496e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f5f23319b5c  Vlab::SMT::And::accept()
;    @     0x7f5f232219ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5f2330da82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f5f23303d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f5f23317d2a  Vlab::SMT::Assert::accept()
;    @     0x7f5f232219ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5f23326699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f5f23317067  Vlab::SMT::Script::visit_children()
;    @     0x7f5f232219e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f5f23303b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f5f2331703c  Vlab::SMT::Script::accept()
;    @     0x7f5f232219ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5f233037bb  Vlab::Solver::ConstraintSolver::start()
