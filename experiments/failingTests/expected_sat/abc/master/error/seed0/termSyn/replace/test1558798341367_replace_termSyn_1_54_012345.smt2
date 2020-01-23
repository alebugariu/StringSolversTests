(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.at tmp_str0 tmp_int1) (int.to.str tmp_int1) (int.to.str tmp_int1)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:11.761032  3201 UnaryAutomaton.cpp:325] 1
;I0818 17:37:11.761080  3201 UnaryAutomaton.cpp:326] 1
;I0818 17:37:11.761090  3201 UnaryAutomaton.cpp:327] 1
;F0818 17:37:11.774166  3201 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f7fd128ff5d  google::LogMessage::Fail()
;    @     0x7f7fd1292513  google::LogMessage::SendToLog()
;    @     0x7f7fd128faeb  google::LogMessage::Flush()
;    @     0x7f7fd129145e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f7fd18b3a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f7fd1901992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f7fd18009ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7fd18b2762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f7fd18fedf0  Vlab::SMT::ToString::accept()
;    @     0x7f7fd18009ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7fd18ad7f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f7fd18fa450  Vlab::SMT::Eq::accept()
;    @     0x7f7fd18009ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7fd18ab878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f7fd18ec5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f7fd18e396e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f7fd18f8b5c  Vlab::SMT::And::accept()
;    @     0x7f7fd18009ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7fd18eca82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f7fd18e2d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f7fd18f6d2a  Vlab::SMT::Assert::accept()
;    @     0x7f7fd18009ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7fd1905699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f7fd18f6067  Vlab::SMT::Script::visit_children()
;    @     0x7f7fd18009e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f7fd18e2b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f7fd18f603c  Vlab::SMT::Script::accept()
;    @     0x7f7fd18009ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7fd18e27bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f7fd17e6b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f7fd0942830  __libc_start_main
